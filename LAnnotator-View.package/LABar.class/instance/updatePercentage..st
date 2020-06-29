initialization
updatePercentage: aPercentage
	self size: (self absoluteSize x)@{(self absoluteSize y * aPercentage). (0.2)} max.