class JobMailer < ApplicationMailer
  default from: "Chief Monkey <chief@monkeycage.com>"

  # Filter through each user, email them if they have active jobs.
  def thursday_update(user)
    @user = user
    @compliment = random_compliment
    mail( to: @user.email,
          subject: 'Weekly Job Update - MonkeyCage' )
  end

  def random_compliment
    compliments = [
      "If Einsten could meet you, he'd be mildly to moderately intimidated.",
      "Your parents argue over which one of them you look like.",
      "I think you'd be great at thumb wars.",
      "Your sneezes sound like a chorus of angels giggling.",
      "Every other country is super jealous that you're a citizen in this country.",
      "You're probably the best cereal maker I know.",
      "Your pet loves you too much to ever run away.",
      "Your Year 12 photo was the best in my opinion.  Way better than Sally's.",
      "I bet your designs are super accurate.",
      "Don't ever question your sanity, you're just fine.",
      "Don't ever trust a trainee.",
      "Your hair looks great today.",
      "Surely you're over-qualified for this job?",
      "You look just like John Wayne in my opinion.",
      "Did you know that the Chief Monkey of MonkeyCage has a theme song?",
      "You'd look great with a moustache.",
      "Did you know monkeys communicate with other monkeys via coconuts?",
      "A monkey once attacked me but we soon became friends.  It was nice.",
      "If you can read this, it's already too late for me.",
      "I think you're special.",
      "That shirt really brings out your cheekbones.",
      "Imagine if your design drawings were scratch and sniff!  That'd be incredible..",
      "Is that a stain on your pants?",
      "There's something in your teeth.",
      "Baby baby ooooooo - Justin Beiber",
      "Did you know that the average goldfish can't fly?",
      "Did you know it's probably someone on earth's birthday today?"]

    index_range = compliments[0...-1].count + 1

    compliment = compliments[rand(index_range)]
  end

end

# Manually email all users (Also use once sidekiq is setup)

# users = User.all
#
# users.each do |user|
#   if user.has_active_jobs
#     JobMailer.thursday_update(user).deliver_now
#   end
# end
