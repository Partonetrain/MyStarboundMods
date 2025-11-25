function init()
  self.blessings = config.getParameter("blessings", {})
  object.setInteractive(true)
end

function onInteraction(args)
  for i=#self.blessings, 1, -1
  do 
	  local blessing = self.blessings[i]
	  world.sendEntityMessage(args.sourceId, "applyStatusEffect", blessing, 1800, entity.id());
  end
  randomNum = math.random(1,50)
  if randomNum == 50 then
	object.say("The power of Kluex compels you!")
  end
end