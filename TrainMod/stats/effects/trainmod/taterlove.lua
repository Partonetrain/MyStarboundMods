function init()
  local bounds = mcontroller.boundBox()
  animator.setParticleEmitterOffsetRegion("taters", {bounds[1], bounds[2] + 1.5, bounds[3], bounds[2] + 1.5})
  
  effect.addStatModifierGroup({
    {stat = "jumpModifier", amount = 0.5},
	{stat = "fallDamageMultiplier", amount = -0.5}
  })
end

function update(dt)
	animator.setParticleEmitterActive("taters", mcontroller.xVelocity() > 0 or mcontroller.yVelocity() > 0)
	
	mcontroller.controlModifiers({
      airJumpModifier = 1.5,
	  speedModifier = 1.5
    })
	
	animator.setFlipped(mcontroller.facingDirection() == 1)
	
end

function uninit()
end
