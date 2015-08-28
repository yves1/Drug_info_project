#WE DO NOT NEED ECSTASY. MOLLY IS ECSTASY. I REPEAT. MOLLY = ECSTASY. ASK KYLE FOR DEATHRATE OF LSD. PRICE OF KITTY DEATHRATE OF KITTY DEATHRATE OF METH
require_relative "models/model.rb"
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/results' do
    molly=Drug.new("Molly is a psychoactive drug of the substituted methylenedioxyphenethylamine and substituted amphetamine classes of drugs."," You would take molly by a tablet, or inhaling crushed powder."," The effects are euphoria and empathogenic.", " The street price 80-200$ per gram."," The deathrate from molly is 50-80 people yearly.","https://upload.wikimedia.org/wikipedia/commons/7/7e/Ecstasy_monogram.jpg")

    if params[:drug] == "molly"
       @drug=molly
       @drug_name="Molly"
    end

    weed=Drug.new("Cannabis is used for hemp fibre, hemp oils, for medical purposes and as a recreational drug. The chemical THC found in Cannabis is what gets you high, THC is obtained from the dried flower of Cannabis."," You would use marijauna by either smoking it or in some cases, eating it."," The effects of marijuana are euphoria, overall happiness. and hunger."," The street price of marijuana is 250-375$ per once."," No one has been recorded of dying from marijuana.","http://images.politico.com/global/2014/01/10/140110_marijuana_ap_605.jpg")

    if params[:drug] == "weed"
      @drug=weed
      @drug_name="Weed"
    end
#WE DO NOT NEED ECSTASY. MOLLY IS ECSTASY. I REPEAT. MOLLY = ECSTASY. ASK KYLE FOR DEATHRATE OF LSD PRICE OF KITTY DEATHRATE OF KITTY DEATHRATE OF METH
    xanax=Drug.new("Short-acting anxiolytic of the benzodiazepine class. It is commonly used for the treatment of panic disorder, and anxiety disorders, such as generalized anxiety disorder (GAD) or social anxiety disorder (SAD)."," You would take Xanax by a pill only."," The effects of Xanac are anxiolytic, sedative, hypnotic, skeletal muscle relaxant, anticonvulsant, and amnestic."," The street price of Xanax is 5$ per 1 milligram.","The deathrate of Xanax is 5-8 people yearly.","http://images.ddccdn.com/images/pills/nlm/000090094.jpg")

    if params[:drug] == "xanax"
      @drug=xanax
    @drug_name="Xanax"
    end
    adderall=Drug.new(" Adderall is a psychostimulant drug of the phenethylamine class prescribed in the treatment of attention deficit hyperactivity disorder (ADHD), narcolepsy, and obesity. Adderall can also be used as an athletic performance and cognitive enhancer."," You would take adderall by a pill"," The effects of adderall are aphrodisiac, euphoria."," The street price is 3-5$ per pill."," The deathrate of adderall is 5-10 people yearly.","http://images.medscape.com/pi/features/drugdirectory/octupdate/SHR03911.jpg")

    if params[:drug] == "adderall"
      @drug=adderall
      @drug_name="Adderall"
    end

    lsd=Drug.new("LSD or LSD-25, also known as lysergide (INN) and colloquially as acid, is a psychedelic drug of the ergoline family. It is used mainly as an entheogen and recreational drug."," You take LSD by a pill, injection, or by a paper tablet."," The effects of LSD are altered thinking processes, closed- and open-eye visuals, synesthesia, an altered sense of time, and spiritual experiences."," The street price of LSD is 15$ for a pill."," Suicides are more or less common for meth users."," http://www.druginfo.sl.nsw.gov.au/images/lsd.jpg")

    if params[:drug] == "lsd"
        @drug=lsd
        @drug_name="LSD"
    end

    shrooms=Drug.new("Psilocybin mushrooms, also known as psychedelic mushrooms, are mushrooms that contain the psychedelic compounds psilocybin and psilocin. Common colloquial terms include magic mushrooms and 'shrooms. It is used mainly as an entheogen and recreational drug."," You would take shrooms by eating them.","The effects of shrooms are euphoria, altered thinking processes, closed and open-eye visuals, synesthesia, an altered sense of time and spiritual experiences."," The street price of shrooms are 20-40$ per 3.5g."," No one has been recorded of dying to shrooms.","https://cdn2.vox-cdn.com/thumbor/5aaojEMYBJ_0DnxWCPtzZkb8RTQ=/800x0/filters:no_upscale()/cdn0.vox-cdn.com/uploads/chorus_asset/file/3902418/GettyImages-157876740.jpg")

    if params[:drug] == "shrooms"
      @drug=shrooms
       @drug_name="Shrooms"
    end

    nicotine=Drug.new("Nicotine is a potent parasympathomimetic alkaloid found in the nightshade family of plants (Solanaceae) and is a stimulant drug."," You take nicotine by smoking it"," The effects of nicotine are cognition, alertness and focus"," The price of nicotine is $18.05 per pack of cigarettes."," Since nicotine is often associated with cigarettes, 4 million people die from cigarettes per year. Please note that the people who die from cigarettes are not dying from nicotine, but from the carcinogens in the smoke. Nicotine is the addicitive drug that keeps people smoking, so it thought that nicotine plays an important role in the deaths. The death rate of nicotine poisoning is very low.","http://1.bp.blogspot.com/-vDeXYEZBqlw/UY9N83ymitI/AAAAAAAACDg/_qjyacbqtQg/s320/nicotine.png")

    if params[:drug] == "nicotine"
      @drug=nicotine
      @drug_name="Nicotine"
    end

    kitty=Drug.new("Kitty is a monoamine alkaloid and psychoactive stimulant, a substituted cathinone. It is used as a recreational drug."," Kitty is usually snorted, but can be smoked, injected, or by a pill."," The effects of kitty are feelings of euphoria, increased alertness, slurred speech, shaking of the limbs, increased heart rate, risk of blood clots on the brain, heart attacks or strokes, headaches or migraine attacks, Irritable Bowel Syndrome (IBS) or pains in the stomach, increased empathy and sense of communication, and both decreased and increased sexual function and desire","The street price of kitty is per gram has been as high as $100 "," Some people who have taken kitty have died while under the influence, more so in the UK.","http://www.theinvestigators.co.nz/assets/Uploads/_resampled/CroppedImage360300-drug-info-cat02.jpg")

      if params[:drug] == "kitty"
        @drug=kitty
         @drug_name="Kitty"
      end

    alcohol=Drug.new("Alcohol is originally referred to the primary alcohol ethyl alcohol (ethanol), the predominant alcohol in alcoholic beverages."," You take in alcohol by drinking it."," The effects of alcohol are the risk of depression and anxiety."," Alcohol has a wide price range, from 5$ up to 1000$ or even more."," 2.5 million people die from alcohol-related incidents.","http://www.talktofrank.com/sites/default/files/drugs/LARGE%20PHOTOS_ALCOHOL.jpg")

    if params[:drug] == "alcohol"
      @drug=alcohol
       @drug_name="Alcohol"
    end

    meth=Drug.new("Meth is a strong central nervous system (CNS) stimulant that is mainly used as a recreational drug."," You can take meth by either smoking it, injecting it, or inhaling it."," In low doses, methamphetamine can cause an elevated mood and increase alertness, concentration, and energy in fatigued individuals. At higher doses, it can induce psychosis, rhabdomyolysis and cerebral hemorrhage."," One hit of meth is about a quarter of a gram and will cost a user about $25."," People who take meth die from suicides while under the influence rather than actuallyt overdosing.","http://www.talktofrank.com/sites/default/files/drugs/Crystal%20meth.jpg")

    if params[:drug] == "meth"
      @drug=meth
      @drug_name="Meth"
    end
    erb :results
  end

end
#DEAHTRATE OF METH