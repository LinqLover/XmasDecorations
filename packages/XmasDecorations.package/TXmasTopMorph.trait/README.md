I am a morph that is displayed above all regular morphs in a world. I collobare with WorldState which holds my instances and draws them in front of the world. To guarantee a reasonable instance, I implement some optimizations that supersede the standard DamageRecorder.

Parts of my implementation are copied from HandMorph, which formerly was the only morph with top morph capabilities.