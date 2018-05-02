require_relative 'Speaker'
module DataAccessLayer
	class SqlServerCompactRepository
		def SaveSpeaker(speaker)
			#TODO: Save speaker to DB for now. For demo, just assume success and return 1.
			return 1
		end
		
		def calculateRegistrationFee(yearsOfExperience)
			if yearsOfExperience <= 1 then
				registrationFee = 500
			elsif yearsOfExperience >= 2 and yearsOfExperience <= 3 then
				registrationFee = 250
			elsif yearsOfExperience >= 4 and yearsOfExperience <= 5 then
				registrationFee = 100
			elsif yearsOfExperience >= 6 and yearsOfExperience <= 9 then
				registrationFee = 50
			else
				registrationFee = 0
			end
			return registrationFee
		end
	end
end