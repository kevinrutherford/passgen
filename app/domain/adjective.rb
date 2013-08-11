require 'securerandom'

class Adjective

  ADJECTIVES = %w{
    aback
    abashed
    abiding
    abject
    ablaze
    able
    aboard
    abrupt
    absent
    absurd
    abusive
    acid
    acidic
    acrid
    adamant
    adhoc
    Afghan
    afraid
    African
    ahead
    ajar
    Alaskan
    alert
    alike
    alive
    alleged
    aloof
    amazing
    amuck
    amused
    amusing
    ancient
    angry
    annoyed
    anxious
    aquatic
    Arabian
    arctic
    ashamed
    average
    awake
    aware
    awesome
    awful
    Aztec
    bad
    bashful
    bawdy
    Belgian
    Bengali
    bent
    berserk
    best
    better
    big
    billowy
    bitter
    bizarre
    black
    bloody
    blue
    boiling
    boorish
    bored
    boring
    Bosnian
    bouncy
    brainy
    brash
    brave
    brawny
    breezy
    brief
    bright
    broad
    broken
    brown
    bumpy
    burly
    busy
    cagey
    callous
    calm
    capable
    careful
    caring
    certain
    cheap
    chief
    Chilean
    chilly
    Chinese
    chubby
    chunky
    clammy
    classy
    clean
    clear
    clever
    closed
    cloudy
    clumsy
    cold
    common
    complex
    cooing
    cool
    Coptic
    crabby
    craven
    crazy
    creepy
    crooked
    crowded
    cruel
    cuddly
    curious
    curly
    curved
    curvy
    cut
    cute
    cynical
    Czech
    daffy
    daily
    damaged
    damp
    Danish
    dapper
    dark
    dashing
    dead
    deadpan
    dear
    deep
    deeply
    defiant
    demonic
    direful
    dirty
    dizzy
    drab
    dreary
    drunk
    dry
    dull
    dusty
    Dutch
    dynamic
    eager
    early
    earthy
    easy
    eatable
    eight
    elastic
    elated
    elderly
    elegant
    elfin
    elite
    eminent
    empty
    English
    envious
    equable
    equal
    erect
    erratic
    evasive
    even
    excited
    exotic
    faded
    faint
    fair
    false
    famous
    fancy
    far
    fast
    fat
    faulty
    fearful
    feeble
    feigned
    female
    fertile
    festive
    few
    fierce
    filthy
    fine
    finicky
    Finnish
    first
    five
    fixed
    flaky
    flashy
    flat
    Flemish
    flimsy
    flowery
    fluffy
    foamy
    foolish
    four
    fragile
    frail
    frantic
    free
    French
    fresh
    fretful
    full
    funny
    furry
    furtive
    future
    fuzzy
    gabby
    gainful
    gamy
    gaping
    gaudy
    general
    gentle
    German
    giant
    giddy
    gifted
    glib
    glossy
    godly
    good
    goofy
    gratis
    gray
    greasy
    great
    greedy
    Greek
    green
    grey
    groovy
    grouchy
    grubby
    grumpy
    guarded
    gusty
    half
    halting
    handy
    hanging
    hapless
    happy
    hard
    harsh
    hateful
    heady
    healthy
    heavy
    hellish
    helpful
    hideous
    high
    hissing
    hollow
    homely
    hot
    huge
    hulking
    humdrum
    hungry
    hurried
    hurt
    hushed
    husky
    icky
    icy
    idiotic
    ill
    illegal
    immense
    Inca
    Indian
    innate
    Iranian
    Iraqi
    irate
    Irish
    Israeli
    Italian
    itchy
    jaded
    jagged
    jazzy
    jealous
    jittery
    jobless
    jolly
    joyous
    juicy
    jumbled
    jumpy
    kaput
    keen
    kind
    kindly
    knotty
    knowing
    known
    labored
    lacking
    lame
    languid
    large
    last
    late
    Latvian
    lavish
    lazy
    lean
    learned
    left
    legal
    lethal
    level
    lewd
    Libyan
    light
    like
    limping
    little
    lively
    living
    lonely
    long
    longing
    loose
    loud
    loutish
    lovely
    loving
    low
    lowly
    lucky
    lumpy
    lush
    lying
    lyrical
    macabre
    macho
    madly
    magenta
    magical
    Malayan
    male
    mammoth
    many
    marked
    married
    massive
    mature
    Mayan
    mean
    measly
    meaty
    medical
    meek
    mellow
    melodic
    melted
    mere
    messy
    Mexican
    mighty
    milky
    minor
    misty
    mixed
    moaning
    modern
    mouldy
    muddled
    mundane
    murky
    mushy
    mute
    naive
    nappy
    narrow
    nasty
    natural
    naughty
    near
    neat
    needy
    nervous
    new
    next
    nice
    nifty
    nimble
    nine
    nippy
    noisy
    nonstop
    Nordic
    normal
    Norse
    nosy
    noxious
    null
    nutty
    oafish
    obese
    obscene
    oceanic
    odd
    offbeat
    old
    one
    onerous
    open
    optimal
    orange
    organic
    oval
    overt
    painful
    pale
    paltry
    panicky
    parched
    past
    perfect
    petite
    phobic
    pink
    piquant
    placid
    plain
    plant
    plastic
    plucky
    poised
    Polish
    polite
    poor
    premium
    present
    pretty
    pricey
    prickly
    private
    profuse
    proud
    public
    puffy
    pumped
    puny
    purple
    purring
    pushy
    puzzled
    quack
    quaint
    quick
    quiet
    quirky
    rabid
    racial
    ragged
    rainy
    rampant
    rapid
    rare
    raspy
    ratty
    ready
    real
    rebel
    red
    regular
    rich
    right
    rigid
    ripe
    ritzy
    roasted
    robust
    roomy
    rotten
    rough
    round
    royal
    ruddy
    rude
    rural
    Russian
    rustic
    sable
    sad
    safe
    salty
    same
    sassy
    savory
    scarce
    scared
    scary
    Scots
    scrawny
    second
    secret
    sedate
    seemly
    selfish
    Serbian
    serious
    shaggy
    shaky
    shallow
    sharp
    shiny
    short
    shrill
    shut
    shy
    sick
    silent
    silky
    silly
    simple
    sincere
    six
    skinny
    sleepy
    slim
    slimy
    sloppy
    Slovak
    slow
    small
    smart
    smelly
    smiling
    smoggy
    smooth
    sneaky
    snotty
    soft
    soggy
    solid
    Somali
    somber
    sordid
    sore
    sour
    Spanish
    special
    spicy
    spiffy
    spiky
    spooky
    spotted
    spotty
    squalid
    square
    staking
    stale
    steady
    steep
    sticky
    stiff
    stingy
    stormy
    strange
    striped
    strong
    stupid
    sturdy
    subdued
    sudden
    sulky
    super
    superb
    supreme
    swanky
    Swedish
    sweet
    swift
    Swiss
    taboo
    tacit
    tacky
    tall
    tame
    tan
    tangy
    tart
    tasty
    tawdry
    tearful
    tedious
    teeny
    telling
    ten
    tender
    tense
    tenuous
    tested
    testy
    Thai
    thick
    thin
    third
    thirsty
    three
    tidy
    tight
    tiny
    tired
    torpid
    tough
    trashy
    tricky
    trite
    true
    two
    typical
    ugliest
    ugly
    ultra
    unable
    unarmed
    unequal
    uneven
    unique
    unkempt
    unknown
    unruly
    untidy
    unused
    unusual
    upbeat
    uppity
    upset
    uptight
    used
    useful
    useless
    utopian
    utter
    vacuous
    vague
    various
    vast
    verdant
    versed
    violent
    violet
    vulgar
    wacky
    waggish
    waiting
    wakeful
    wanting
    warlike
    warm
    wary
    watery
    weak
    wealthy
    weary
    Welsh
    wet
    white
    whole
    wicked
    wide
    wiggly
    wild
    willing
    windy
    wiry
    wise
    wistful
    witty
    womanly
    wooden
    woozy
    worried
    wrong
    wry
    yellow
    young
    yummy
    zany
    zealous
    zesty
    zippy
    zonked
  }

  def initialize
    i = SecureRandom.random_number(ADJECTIVES.length)
    @adjective = ADJECTIVES[i]
  end

  def to_s
    @adjective
  end
end

