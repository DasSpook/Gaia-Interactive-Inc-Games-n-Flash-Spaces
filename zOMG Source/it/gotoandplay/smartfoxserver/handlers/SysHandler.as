package it.gotoandplay.smartfoxserver.handlers
{
   import flash.utils.getTimer;
   import it.gotoandplay.smartfoxserver.SFSEvent;
   import it.gotoandplay.smartfoxserver.SmartFoxClient;
   import it.gotoandplay.smartfoxserver.data.Room;
   import it.gotoandplay.smartfoxserver.data.User;
   import it.gotoandplay.smartfoxserver.util.Entities;
   import it.gotoandplay.smartfoxserver.util.ObjectSerializer;
   
   public class SysHandler implements IMessageHandler
   {
       
      
      private var sfs:SmartFoxClient;
      
      private var handlersTable:Array;
      
      public function SysHandler(sfs:SmartFoxClient)
      {
         super();
         this.sfs = sfs;
         handlersTable = [];
         handlersTable["apiOK"] = this.handleApiOK;
         handlersTable["apiKO"] = this.handleApiKO;
         handlersTable["logOK"] = this.handleLoginOk;
         handlersTable["logKO"] = this.handleLoginKo;
         handlersTable["logout"] = this.handleLogout;
         handlersTable["rmList"] = this.handleRoomList;
         handlersTable["uCount"] = this.handleUserCountChange;
         handlersTable["joinOK"] = this.handleJoinOk;
         handlersTable["joinKO"] = this.handleJoinKo;
         handlersTable["uER"] = this.handleUserEnterRoom;
         handlersTable["userGone"] = this.handleUserLeaveRoom;
         handlersTable["pubMsg"] = this.handlePublicMessage;
         handlersTable["prvMsg"] = this.handlePrivateMessage;
         handlersTable["dmnMsg"] = this.handleAdminMessage;
         handlersTable["modMsg"] = this.handleModMessage;
         handlersTable["dataObj"] = this.handleASObject;
         handlersTable["rVarsUpdate"] = this.handleRoomVarsUpdate;
         handlersTable["roomAdd"] = this.handleRoomAdded;
         handlersTable["roomDel"] = this.handleRoomDeleted;
         handlersTable["rndK"] = this.handleRandomKey;
         handlersTable["roundTripRes"] = this.handleRoundTripBench;
         handlersTable["uVarsUpdate"] = this.handleUserVarsUpdate;
         handlersTable["createRmKO"] = this.handleCreateRoomError;
         handlersTable["bList"] = this.handleBuddyList;
         handlersTable["bUpd"] = this.handleBuddyListUpdate;
         handlersTable["bAdd"] = this.handleBuddyAdded;
         handlersTable["roomB"] = this.handleBuddyRoom;
         handlersTable["leaveRoom"] = this.handleLeaveRoom;
         handlersTable["swSpec"] = this.handleSpectatorSwitched;
      }
      
      private function populateVariables(variables:Array, xmlData:Object, changedVars:Array = null) : void
      {
         var v:XML = null;
         var vName:String = null;
         var vType:String = null;
         var vValue:String = null;
         for each(v in xmlData.vars["var"])
         {
            vName = v.@n;
            vType = v.@t;
            vValue = v;
            if(changedVars != null)
            {
               changedVars.push(vName);
               changedVars[vName] = true;
            }
            if(vType == "b")
            {
               variables[vName] = vValue == "1"?true:false;
            }
            else if(vType == "n")
            {
               variables[vName] = Number(vValue);
            }
            else if(vType == "s")
            {
               variables[vName] = vValue;
            }
            else if(vType == "x")
            {
               delete variables[vName];
            }
         }
      }
      
      private function handleRoomDeleted(o:Object) : void
      {
         var roomId:int = int(o.body.rm.@id);
         var roomList:Array = sfs.getAllRooms();
         var params:Object = {};
         params.room = roomList[roomId];
         delete roomList[roomId];
         var evt:SFSEvent = new SFSEvent(SFSEvent.onRoomDeleted,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleAdminMessage(o:Object) : void
      {
         var roomId:int = int(o.body.@r);
         var userId:int = int(o.body.user.@id);
         var message:String = o.body.txt;
         var params:Object = {};
         params.message = Entities.decodeEntities(message);
         var evt:SFSEvent = new SFSEvent(SFSEvent.onAdminMessage,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleUserVarsUpdate(o:Object) : void
      {
         var roomId:int = int(o.body.@r);
         var userId:int = int(o.body.user.@id);
         var currUser:User = sfs.getRoom(roomId).getUser(userId);
         var changedVars:Array = [];
         if(o.body.vars.toString().length > 0)
         {
            populateVariables(currUser.getVariables(),o.body,changedVars);
         }
         var params:Object = {};
         params.user = currUser;
         params.changedVars = changedVars;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onUserVariablesUpdate,params);
         sfs.dispatchEvent(evt);
      }
      
      private function handleCreateRoomError(o:Object) : void
      {
         var errMsg:String = o.body.room.@e;
         var params:Object = {};
         params.error = errMsg;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onCreateRoomError,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handlePrivateMessage(o:Object) : void
      {
         var roomId:int = int(o.body.@r);
         var userId:int = int(o.body.user.@id);
         var message:String = o.body.txt;
         var sender:User = sfs.getRoom(roomId).getUser(userId);
         var params:Object = {};
         params.message = Entities.decodeEntities(message);
         params.sender = sender;
         params.roomId = roomId;
         params.userId = userId;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onPrivateMessage,params);
         sfs.dispatchEvent(evt);
      }
      
      private function handleBuddyRoom(o:Object) : void
      {
         var roomIds:String = o.body.br.@r;
         var ids:Array = roomIds.split(",");
         for(var i:int = 0; i < ids.length; i++)
         {
            ids[i] = int(ids[i]);
         }
         var params:Object = {};
         params.idList = ids;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onBuddyRoom,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleLogout(o:Object) : void
      {
         sfs.__logout();
         var evt:SFSEvent = new SFSEvent(SFSEvent.onLogout,{});
         sfs.dispatchEvent(evt);
      }
      
      public function handleUserCountChange(o:Object) : void
      {
         var params:Object = null;
         var evt:SFSEvent = null;
         var uCount:int = int(o.body.@u);
         var sCount:int = int(o.body.@s);
         var roomId:int = int(o.body.@r);
         var room:Room = sfs.getAllRooms()[roomId];
         if(room != null)
         {
            room.setUserCount(uCount);
            room.setSpectatorCount(sCount);
            params = {};
            params.room = room;
            evt = new SFSEvent(SFSEvent.onUserCountChange,params);
            sfs.dispatchEvent(evt);
         }
      }
      
      private function handleRandomKey(o:Object) : void
      {
         var key:String = o.body.k.toString();
         var params:Object = {};
         params.key = key;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onRandomKey,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handlePublicMessage(o:Object) : void
      {
         var roomId:int = int(o.body.@r);
         var userId:int = int(o.body.user.@id);
         var message:String = o.body.txt;
         var sender:User = sfs.getRoom(roomId).getUser(userId);
         var params:Object = {};
         params.message = Entities.decodeEntities(message);
         params.sender = sender;
         params.roomId = roomId;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onPublicMessage,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleUserEnterRoom(o:Object) : void
      {
         var roomId:int = int(o.body.@r);
         var usrId:int = int(o.body.u.@i);
         var usrName:String = o.body.u.n;
         var isMod:* = o.body.u.@m == "1";
         var isSpec:* = o.body.u.@s == "1";
         var pid:int = o.body.u.@p != null?int(int(o.body.u.@p)):-1;
         var varList:XMLList = o.body.u.vars["var"];
         var currRoom:Room = sfs.getRoom(roomId);
         var newUser:User = new User(usrId,usrName);
         newUser.setModerator(isMod);
         newUser.setIsSpectator(isSpec);
         newUser.setPlayerId(pid);
         currRoom.addUser(newUser,usrId);
         if(o.body.u.vars.toString().length > 0)
         {
            populateVariables(newUser.getVariables(),o.body.u);
         }
         var params:Object = {};
         params.roomId = roomId;
         params.user = newUser;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onUserEnterRoom,params);
         sfs.dispatchEvent(evt);
      }
      
      public function dispatchDisconnection() : void
      {
         var evt:SFSEvent = new SFSEvent(SFSEvent.onConnectionLost,null);
         sfs.dispatchEvent(evt);
      }
      
      private function handleSpectatorSwitched(o:Object) : void
      {
         var userId:int = 0;
         var user:User = null;
         var params:Object = null;
         var evt:SFSEvent = null;
         var roomId:int = int(o.body.@r);
         var playerId:int = int(o.body.pid.@id);
         var theRoom:Room = sfs.getRoom(roomId);
         if(playerId > 0)
         {
            theRoom.setUserCount(theRoom.getUserCount() + 1);
            theRoom.setSpectatorCount(theRoom.getSpectatorCount() - 1);
         }
         if(o.body.pid.@u != undefined)
         {
            userId = int(o.body.pid.@u);
            user = theRoom.getUser(userId);
            if(user != null)
            {
               user.setIsSpectator(false);
               user.setPlayerId(playerId);
            }
         }
         else
         {
            sfs.playerId = playerId;
            params = {};
            params.success = sfs.playerId > 0;
            params.newId = sfs.playerId;
            params.room = theRoom;
            evt = new SFSEvent(SFSEvent.onSpectatorSwitched,params);
            sfs.dispatchEvent(evt);
         }
      }
      
      public function handleLoginOk(o:Object) : void
      {
         var uid:int = int(o.body.login.@id);
         var mod:int = int(o.body.login.@mod);
         var name:String = o.body.login.@n;
         sfs.amIModerator = mod == 1;
         sfs.myUserId = uid;
         sfs.myUserName = name;
         sfs.playerId = -1;
         var params:Object = {};
         params.success = true;
         params.name = name;
         params.error = "";
         var evt:SFSEvent = new SFSEvent(SFSEvent.onLogin,params);
         sfs.dispatchEvent(evt);
         sfs.getRoomList();
      }
      
      private function handleBuddyListUpdate(o:Object) : void
      {
         var buddy:Object = null;
         var bVars:XMLList = null;
         var tempB:Object = null;
         var found:Boolean = false;
         var it:* = null;
         var bVar:XML = null;
         var params:Object = {};
         var evt:SFSEvent = null;
         if(o.body.b != null)
         {
            buddy = {};
            buddy.isOnline = o.body.b.@s == "1"?true:false;
            buddy.name = o.body.b.n.toString();
            buddy.id = o.body.b.@i;
            buddy.variables = {};
            bVars = o.body.b.vs;
            if(bVars.toString().length > 0)
            {
               for each(bVar in bVars.v)
               {
                  buddy.variables[bVar.@n.toString()] = bVar.toString();
               }
            }
            tempB = null;
            found = false;
            for(it in sfs.buddyList)
            {
               tempB = sfs.buddyList[it];
               if(tempB.name == buddy.name)
               {
                  sfs.buddyList[it] = buddy;
                  found = true;
                  break;
               }
            }
            params.buddy = buddy;
            evt = new SFSEvent(SFSEvent.onBuddyListUpdate,params);
            sfs.dispatchEvent(evt);
         }
         else
         {
            params.error = o.body.err.toString();
            evt = new SFSEvent(SFSEvent.onBuddyListError,params);
            sfs.dispatchEvent(evt);
         }
      }
      
      public function handleRoomVarsUpdate(o:Object) : void
      {
         var roomId:int = int(o.body.@r);
         var userId:int = int(o.body.user.@id);
         var currRoom:Room = sfs.getRoom(roomId);
         var changedVars:Array = [];
         if(o.body.vars.toString().length > 0)
         {
            populateVariables(currRoom.getVariables(),o.body,changedVars);
         }
         var params:Object = {};
         params.room = currRoom;
         params.changedVars = changedVars;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onRoomVariablesUpdate,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleRoomList(o:Object) : void
      {
         var roomXml:XML = null;
         var params:Object = null;
         var evt:SFSEvent = null;
         var roomId:int = 0;
         var room:Room = null;
         sfs.clearRoomList();
         var roomList:Array = sfs.getAllRooms();
         for each(roomXml in o.body.rmList.rm)
         {
            roomId = int(roomXml.@id);
            room = new Room(roomId,roomXml.n,int(roomXml.@maxu),int(roomXml.@maxs),roomXml.@temp == "1",roomXml.@game == "1",roomXml.@priv == "1",roomXml.@lmb == "1",int(roomXml.@ucnt),int(roomXml.@scnt));
            if(roomXml.vars.toString().length > 0)
            {
               populateVariables(room.getVariables(),roomXml);
            }
            roomList[roomId] = room;
         }
         params = {};
         params.roomList = roomList;
         evt = new SFSEvent(SFSEvent.onRoomListUpdate,params);
         sfs.dispatchEvent(evt);
      }
      
      private function handleBuddyAdded(o:Object) : void
      {
         var bVar:XML = null;
         var buddy:Object = {};
         buddy.isOnline = o.body.b.@s == "1"?true:false;
         buddy.name = o.body.b.n.toString();
         buddy.id = o.body.b.@i;
         buddy.variables = {};
         var bVars:XMLList = o.body.b.vs;
         if(bVars.toString().length > 0)
         {
            for each(bVar in bVars.v)
            {
               buddy.variables[bVar.@n.toString()] = bVar.toString();
            }
         }
         sfs.buddyList.push(buddy);
         var params:Object = {};
         params.list = sfs.buddyList;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onBuddyList,params);
         sfs.dispatchEvent(evt);
      }
      
      private function handleRoomAdded(o:Object) : void
      {
         var rId:int = int(o.body.rm.@id);
         var rName:String = o.body.rm.name;
         var rMax:int = int(o.body.rm.@max);
         var rSpec:int = int(o.body.rm.@spec);
         var isTemp:Boolean = o.body.rm.@temp == "1"?true:false;
         var isGame:Boolean = o.body.rm.@game == "1"?true:false;
         var isPriv:Boolean = o.body.rm.@priv == "1"?true:false;
         var isLimbo:Boolean = o.body.rm.@limbo == "1"?true:false;
         var newRoom:Room = new Room(rId,rName,rMax,rSpec,isTemp,isGame,isPriv,isLimbo);
         var rList:Array = sfs.getAllRooms();
         rList[rId] = newRoom;
         if(o.body.rm.vars.toString().length > 0)
         {
            populateVariables(newRoom.getVariables(),o.body.rm);
         }
         var params:Object = {};
         params.room = newRoom;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onRoomAdded,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleUserLeaveRoom(o:Object) : void
      {
         var userId:int = int(o.body.user.@id);
         var roomId:int = int(o.body.@r);
         var theRoom:Room = sfs.getRoom(roomId);
         var uName:String = theRoom.getUser(userId).getName();
         theRoom.removeUser(userId);
         var params:Object = {};
         params.roomId = roomId;
         params.userId = userId;
         params.userName = uName;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onUserLeaveRoom,params);
         sfs.dispatchEvent(evt);
      }
      
      private function handleLeaveRoom(o:Object) : void
      {
         var roomLeft:int = int(o.body.rm.@id);
         var params:Object = {};
         params.roomId = roomLeft;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onRoomLeft,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleLoginKo(o:Object) : void
      {
         var params:Object = {};
         params.success = false;
         params.error = o.body.login.@e;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onLogin,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleModMessage(o:Object) : void
      {
         var roomId:int = int(o.body.@r);
         var userId:int = int(o.body.user.@id);
         var message:String = o.body.txt;
         var sender:User = null;
         var room:Room = sfs.getRoom(roomId);
         if(room != null)
         {
            sender = sfs.getRoom(roomId).getUser(userId);
         }
         var params:Object = {};
         params.message = Entities.decodeEntities(message);
         params.sender = sender;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onModeratorMessage,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleApiOK(o:Object) : void
      {
         sfs.isConnected = true;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onConnection,{"success":true});
         sfs.dispatchEvent(evt);
      }
      
      private function handleRoundTripBench(o:Object) : void
      {
         var now:int = getTimer();
         var res:int = now - sfs.getBenchStartTime();
         var params:Object = {};
         params.elapsed = res;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onRoundTripResponse,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleJoinOk(o:Object) : void
      {
         var usr:XML = null;
         var params:Object = null;
         var evt:SFSEvent = null;
         var name:String = null;
         var id:int = 0;
         var isMod:Boolean = false;
         var isSpec:Boolean = false;
         var pId:int = 0;
         var user:User = null;
         var roomId:int = int(o.body.@r);
         var roomVarsXml:XMLList = o.body;
         var userListXml:XMLList = o.body.uLs.u;
         var playerId:int = int(o.body.pid.@id);
         sfs.activeRoomId = roomId;
         var currRoom:Room = sfs.getRoom(roomId);
         currRoom.clearUserList();
         sfs.playerId = playerId;
         currRoom.setMyPlayerIndex(playerId);
         if(roomVarsXml.vars.toString().length > 0)
         {
            currRoom.clearVariables();
            populateVariables(currRoom.getVariables(),roomVarsXml);
         }
         for each(usr in userListXml)
         {
            name = usr.n;
            id = int(usr.@i);
            isMod = usr.@m == "1"?true:false;
            isSpec = usr.@s == "1"?true:false;
            pId = usr.@p == null?-1:int(int(usr.@p));
            user = new User(id,name);
            user.setModerator(isMod);
            user.setIsSpectator(isSpec);
            user.setPlayerId(pId);
            if(usr.vars.toString().length > 0)
            {
               populateVariables(user.getVariables(),usr);
            }
            currRoom.addUser(user,id);
         }
         sfs.changingRoom = false;
         params = {};
         params.room = currRoom;
         evt = new SFSEvent(SFSEvent.onJoinRoom,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleApiKO(o:Object) : void
      {
         var params:Object = {};
         params.success = false;
         params.error = "API are obsolete, please upgrade";
         var evt:SFSEvent = new SFSEvent(SFSEvent.onConnection,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleASObject(o:Object) : void
      {
         var roomId:int = int(o.body.@r);
         var userId:int = int(o.body.user.@id);
         var xmlStr:String = o.body.dataObj;
         var sender:User = sfs.getRoom(roomId).getUser(userId);
         var asObj:Object = ObjectSerializer.getInstance().deserialize(new XML(xmlStr));
         var params:Object = {};
         params.obj = asObj;
         params.sender = sender;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onObjectReceived,params);
         sfs.dispatchEvent(evt);
      }
      
      private function handleBuddyList(o:Object) : void
      {
         var buddy:Object = null;
         var b:XML = null;
         var bVars:XMLList = null;
         var bVar:XML = null;
         var bList:XMLList = o.body.bList;
         var params:Object = {};
         var evt:SFSEvent = null;
         if(bList != null && bList.b.length != null)
         {
            if(bList.toString().length > 0)
            {
               for each(b in bList.b)
               {
                  buddy = {};
                  buddy.isOnline = b.@s == "1"?true:false;
                  buddy.name = b.n.toString();
                  buddy.id = b.@i;
                  buddy.variables = {};
                  bVars = b.vs;
                  if(bVars.toString().length > 0)
                  {
                     for each(bVar in bVars.v)
                     {
                        buddy.variables[bVar.@n.toString()] = bVar.toString();
                     }
                  }
                  sfs.buddyList.push(buddy);
               }
            }
            params.list = sfs.buddyList;
            evt = new SFSEvent(SFSEvent.onBuddyList,params);
            sfs.dispatchEvent(evt);
         }
         else
         {
            params.error = o.body.err.toString();
            evt = new SFSEvent(SFSEvent.onBuddyListError,params);
            sfs.dispatchEvent(evt);
         }
      }
      
      public function handleJoinKo(o:Object) : void
      {
         sfs.changingRoom = false;
         var params:Object = {};
         params.error = o.body.error.@msg;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onJoinRoomError,params);
         sfs.dispatchEvent(evt);
      }
      
      public function handleMessage(msgObj:Object, type:String) : void
      {
         var xmlData:XML = msgObj as XML;
         var action:String = xmlData.body.@action;
         var fn:Function = handlersTable[action];
         if(fn != null)
         {
            fn.apply(this,[msgObj]);
         }
         else
         {
            trace("Unknown sys command: " + action);
         }
      }
   }
}
