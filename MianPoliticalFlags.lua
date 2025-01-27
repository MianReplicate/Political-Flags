local mutatorName = "MianPoliticalFlags"
behaviour(mutatorName)

function MianPoliticalFlags:Awake()
	self.frameworkName = "Custom Flag Framework"
	self.dataContainer = self.gameObject.GetComponent(DataContainer)
<<<<<<< .merge_file_jjNypv
=======
	self.version = "1.3.0"
>>>>>>> .merge_file_zgqkzw
	self.customFlags = self.dataContainer.GetTextureArray("Flag")
	self.customFlagToTeamColors = self.dataContainer.GetColorArray("Flag")
	self.cover = self.dataContainer.GetTexture("Cover")
	self.name = mutatorName
end

function MianPoliticalFlags:Start()
	local obj = GameObject.Find(self.frameworkName)
	if(obj) then
		self.framework = ScriptedBehaviour.GetScript(obj)
	else
		error("Framework was not found! Please make sure the Custom Flags Framework mutator has been enabled.")
	end

<<<<<<< .merge_file_jjNypv
	self.framework:addFlagPack(self)
end
=======
	self.framework:addTexturePack(self)
end
>>>>>>> .merge_file_zgqkzw
