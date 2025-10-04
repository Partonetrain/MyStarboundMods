function init()
  animator.setParticleEmitterOffsetRegion("statustext", mcontroller.boundBox())
  animator.setParticleEmitterActive("statustext", true)
  
  effect.addStatModifierGroup({
	{stat = "protection", amount = 20},
	{stat = "powerMultiplier", effectiveMultiplier = 1.3}
  })

  script.setUpdateDelta(0)
  effect.setParentDirectives("fade=0000FF;0.03?border=1;0000FF20;00000000")
end

function update(dt)
end

function uninit()
end
