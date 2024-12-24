local mutatorName = "MianPoliticalFlags"
behaviour(mutatorName)

function MianPoliticalFlags:Awake()
	self.frameworkName = "Custom Flag Framework"
	self.dataContainer = self.gameObject.GetComponent(DataContainer)
	self.version = "1.0.0"
	self.frameworkVersion = "1.0.0"
	self.customFlags = self.dataContainer.GetTextureArray("Flag")
	self.customFlagToTeamColors = self.dataContainer.GetColorArray("Flag")
	self.cover = self.dataContainer.GetTexture("Cover")
	self.mutatorName = mutatorName
end

function MianPoliticalFlags:Start()
	local obj = GameObject.Find(self.frameworkName)
	if(obj) then
		self.framework = ScriptedBehaviour.GetScript(obj)
	else
		error("Framework was not found! Please make sure the Custom Flags Framework mutator has been enabled.")
	end

	self.framework:addTexturePack(self)
end