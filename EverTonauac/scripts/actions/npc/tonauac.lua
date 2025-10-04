function blessPlayer(args, board)
  for i=#args.blessings, 1, -1
  do 
	  local blessing = args.blessings[i]
	  world.sendEntityMessage(args.entity, "applyStatusEffect", blessing, args.duration, entity.id());
  end
  return true
end
