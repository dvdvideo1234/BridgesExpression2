/******************************************************************************\
  My custom flash sensor tracer type ( Based on wire rangers )
\******************************************************************************/

local xfs, par = "flash sensor", {"attachment entity", "origin position", "direction vector", "length distance"}
E2Helper.Descriptions["noFSensor()"] = "Returns invalid "..xfs.." object"
E2Helper.Descriptions["setFSensor(e:vvn)"] = "Returns "..xfs.." local to the entity by "..par[2]..", "..par[3]..", "..par[4]
E2Helper.Descriptions["newFSensor(vvn)"] = "Returns "..xfs.." relative to the world by "..par[2]..", "..par[3]..", "..par[4]
E2Helper.Descriptions["newFSensor(e:vv)"] = "Returns "..xfs.." local to the entity by "..par[2]..", "..par[3]..", zero "..par[4]
E2Helper.Descriptions["newFSensor(vv)"] = "Returns "..xfs.." relative to the world by "..par[2]..", "..par[3]..", zero "..par[4]
E2Helper.Descriptions["newFSensor(e:v)"] = "Returns "..xfs.." local to the entity by "..par[2]..", zero "..par[3]..", zero "..par[4]
E2Helper.Descriptions["newFSensor(v)"] = "Returns "..xfs.." relative to the world by "..par[2]..", zero "..par[3]..", zero "..par[4]
E2Helper.Descriptions["newFSensor(e:)"] = "Returns "..xfs.." local to the entity by zero "..par[2]..", zero "..par[3]..", zero "..par[4]
E2Helper.Descriptions["newFSensor(v)"] = "Returns "..xfs.." relative to the world by zero "..par[2]..", zero "..par[3]..", zero "..par[4]
E2Helper.Descriptions["copyFSensor(xfs:)"] = "Returns "..xfs.." copy instance of the current object"
E2Helper.Descriptions["addIgnoreEntityHit(xfs:e)"] = "Adds the entity to the "..xfs.." internal ignore hit list"
E2Helper.Descriptions["remIgnoreEntityHit(xfs:e)"] = "Removes the entity from the "..xfs.." internal ignore hit list"
E2Helper.Descriptions["addClassHit(xfs:s)"] = "Adds the class to the "..xfs.." internal hit list"
E2Helper.Descriptions["remClassHit(xfs:s)"] = "Removes the class from the "..xfs.." internal hit list"
E2Helper.Descriptions["getAttachEntity(xfs:)"] = "Returns the attachment entity of the "..xfs
E2Helper.Descriptions["setAttachEntity(xfs:e)"] = "Updates the attachment entity of the "..xfs
E2Helper.Descriptions["getIgnoreWorld(xfs:)"] = "Returns the ignore world flag of the "..xfs
E2Helper.Descriptions["setAttachEntity(xfs:n)"] = "Updates the ignore world flag of the "..xfs
E2Helper.Descriptions["getOrigin(xfs:)"] = "Returns "..xfs.." "..par[2]
E2Helper.Descriptions["getOriginLocal(xfs:)"] = "Returns "..xfs.." world "..par[2].." converted to "..par[1].." local axis"
E2Helper.Descriptions["getOriginLocal(xfs:e)"] = "Returns "..xfs.." world "..par[2].." converted to entity local axis"
E2Helper.Descriptions["getOriginLocal(xfs:va)"] = "Returns "..xfs.." world "..par[2].." converted to position/angle local axis"
E2Helper.Descriptions["getOriginWorld(xfs:)"] = "Returns "..xfs.." local "..par[2].." converted to "..par[1].." world axis"
E2Helper.Descriptions["getOriginWorld(xfs:e)"] = "Returns "..xfs.." local "..par[2].." converted to entity world axis"
E2Helper.Descriptions["getOriginWorld(xfs:va)"] = "Returns "..xfs.." local "..par[2].." converted to position/angle world axis"
E2Helper.Descriptions["setOrigin(xfs:v)"] = "Updates the "..xfs.." "..par[2]
E2Helper.Descriptions["getDirection(xfs:)"] = "Returns "..xfs.." "..par[3]
E2Helper.Descriptions["getDirectionLocal(xfs:)"] = "Returns "..xfs.." world "..par[3].." converted to "..par[1].." local axis"
E2Helper.Descriptions["getDirectionLocal(xfs:e)"] = "Returns "..xfs.." world "..par[3].." converted to entity local axis"
E2Helper.Descriptions["getDirectionLocal(xfs:a)"] = "Returns "..xfs.." world "..par[3].." converted to angle local axis"
E2Helper.Descriptions["getDirectionWorld(xfs:)"] = "Returns "..xfs.." local "..par[3].." converted to "..par[1].." world axis"
E2Helper.Descriptions["getDirectionWorld(xfs:e)"] = "Returns "..xfs.." local "..par[3].." converted to entity world axis"
E2Helper.Descriptions["getDirectionWorld(xfs:a)"] = "Returns "..xfs.." local "..par[3].." converted to angle world axis"
E2Helper.Descriptions["setDirection(xfs:v)"] = "Updates the "..xfs.." "..par[3]
E2Helper.Descriptions["getLength(xfs:)"] = "Returns "..xfs.." "..par[4]
E2Helper.Descriptions["setLength(xfs:n)"] = "Updates "..xfs.." "..par[4]
E2Helper.Descriptions["getMask(xfs:)"] = "Returns "..xfs.." trace hit mask enum MASK_%"
E2Helper.Descriptions["setMask(xfs:n)"] = "Updates "..xfs.." trace hit mask enum MASK_%"
E2Helper.Descriptions["getCollisionGroup(xfs:)"] = "Returns "..xfs.." trace collision group enum COLLISION_GROUP_%"
E2Helper.Descriptions["setCollisionGroup(xfs:n)"] = "Updates "..xfs.." trace collision group enum COLLISION_GROUP_%"
E2Helper.Descriptions["smpLocal(xfs:)"] = "Samples the "..xfs.." and updates the trace result according to "..par[1].." local axis"
E2Helper.Descriptions["smpWorld(xfs:)"] = "Samples the "..xfs.." and updates the trace result according to the world axis"
E2Helper.Descriptions["isHitNoDraw(xfs:)"] = "Returns the "..xfs.." sampled trace /HitNoDraw/ flag"
E2Helper.Descriptions["isHitNonWorld(xfs:)"] = "Returns the "..xfs.." sampled trace /HitNonWorld/ flag"
E2Helper.Descriptions["isHit(xfs:)"] = "Returns the "..xfs.." sampled trace /Hit/ flag"
E2Helper.Descriptions["isHitSky(xfs:)"] = "Returns the "..xfs.." sampled trace /HitSky/ flag"
E2Helper.Descriptions["isHitWorld(xfs:)"] = "Returns the "..xfs.." sampled trace /HitWorld/ flag"
E2Helper.Descriptions["getHitBox(xfs:)"] = "Returns the "..xfs.." sampled trace /HitBox/ number"
E2Helper.Descriptions["getMatType(xfs:)"] = "Returns the "..xfs.." sampled trace /MatType/ material type number"
E2Helper.Descriptions["getHitGroup(xfs:)"] = "Returns the "..xfs.." sampled trace /HitGroup/ group ID number"
E2Helper.Descriptions["getHitPos(xfs:)"] = "Returns the "..xfs.." sampled trace /HitPos/ location vector"
E2Helper.Descriptions["getHitNormal(xfs:)"] = "Returns "..xfs.." the sampled trace surface /HitNormal/ vector"
E2Helper.Descriptions["getNormal(xfs:)"] = "Returns the "..xfs.." sampled trace /Normal/ aim vector"
E2Helper.Descriptions["getHitTexture(xfs:)"] = "Returns the "..xfs.." sampled trace /HitTexture/ string"
E2Helper.Descriptions["getStartPos(xfs:)"] = "Returns the "..xfs.." sampled trace /StartPos/ vector"
E2Helper.Descriptions["getSurfaceProps(xfs:)"] = "Returns the "..xfs.." sampled trace /SurfaceProps/ ID type number"
E2Helper.Descriptions["getSurfacePropsName(xfs:)"] = "Returns the "..xfs.." sampled trace /SurfaceProps/ ID type name string"
E2Helper.Descriptions["getPhysicsBone(xfs:)"] = "Returns the "..xfs.." sampled trace /PhysicsBone/ ID number"
E2Helper.Descriptions["getFraction(xfs:)"] = "Returns the "..xfs.." sampled trace /Fraction/ in the interval [0-1] number"
E2Helper.Descriptions["getFractionLength(xfs:)"] = "Returns the "..xfs.." sampled trace /Fraction/ multiplied by its "..par[4].." number"
E2Helper.Descriptions["isStartSolid(xfs:)"] = "Returns the "..xfs.." sampled trace /StartSolid/ flag"
E2Helper.Descriptions["isAllSolid(xfs:)"] = "Returns the "..xfs.." sampled trace /AllSolid/ flag"
E2Helper.Descriptions["getFractionLeftSolid(xfs:)"] = "Returns the "..xfs.." sampled trace /FractionLeftSolid/ in the interval [0-1] number"
E2Helper.Descriptions["getFractionLeftSolidLength(xfs:)"] = "Returns the "..xfs.." sampled trace /FractionLeftSolid/ multiplied by its "..par[4].." number"
E2Helper.Descriptions["getEntity(xfs:)"] = "Returns the "..xfs.." sampled trace /Entity/ entity"
