function init()
  self.sounds = config.getParameter("sounds", {})
  animator.setSoundPool("noise", self.sounds)
  object.setInteractive(true)
end


function onInteraction(args)
  world.spawnProjectile("potatoheart", object.toAbsolutePosition({ -0.5, 2.0 }))
  world.sendEntityMessage(args.sourceId, "applyStatusEffect", "taterlove", 3600, entity.id());
  
  randomNum = math.random(1,10)
  if randomNum == 10 then
	object.say("I believe in you! YOU CAN DO THE THING!")
  end
  
  if #self.sounds > 0 then
    animator.playSound("noise")
  end
end

function onNpcPlay(npcId)
  local interact = config.getParameter("npcToy.interactOnNpcPlayStart")
  if interact == nil or interact ~= false then
    onInteraction()
  end
end
