function init()
  animator.setParticleEmitterOffsetRegion("statustext", mcontroller.boundBox())
  animator.setParticleEmitterActive("statustext", true)
  script.setUpdateDelta(5)
  self.healingRate = 1.0 / 5
  effect.addStatModifierGroup({
      {stat = "energyRegenPercentageRate", amount = 0.5},
      {stat = "energyRegenBlockTime", effectiveMultiplier = 0}
    })
  effect.setParentDirectives("fade=FF00FF;0.03?border=1;FF00FF20;00000000")
end

function update(dt)
  status.modifyResourcePercentage("health", self.healingRate * dt)
end

function uninit()
  
end
