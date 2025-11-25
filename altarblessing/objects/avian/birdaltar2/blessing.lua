function init()
  self.blessings = config.getParameter("blessings", {})
  object.setInteractive(true)
end

function onInteraction(args)
  local seed = math.floor(os.time() / 86400) 
  
  local blessing = self.blessings[sb.staticRandomI32Range(1, #self.blessings, seed)]
  world.sendEntityMessage(args.sourceId, "applyStatusEffect", blessing, 1800, entity.id());
  randomNum = math.random(1,50)
  if randomNum == 50 then
	object.say("The power of Kluex compels you!")
  end
end