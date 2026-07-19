local mutatorName = "MianPoliticalFlags"
behaviour(mutatorName)

function MianPoliticalFlags:Awake()
	self.dataContainer = self.gameObject.GetComponent(DataContainer)
	self.CustomFlags = self.dataContainer.GetTextureArray("Flag")
	self.CustomFlagToTeamColors = self.dataContainer.GetColorArray("Flag")
	self.cover = self.dataContainer.GetTexture("Cover")
	self.name = mutatorName
end