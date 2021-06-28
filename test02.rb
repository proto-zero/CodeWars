### The Sorting Magicks
# as translated by Van of the Elves of Forest's Edge

# When the Seers return from their dive into The Gap between this world and
# The World Before The World they rave and froth at the mouth, babbling strange
# and arcane musings. Those who dare to listen and write down their terrible lessons
# are often burdened with an unending confusion, but every so often a Scribe discovers
# a secret within that madness. Amongst the many Magicks divined in such manner, those
# that deal with sorting are of a strange and addictive ilk.
## Be warned, Reader:
# that which you will read came at the price of many who dared listen to the Void. Use it wisely.

# As with any Magick, the first step is to define its scope. The name may vary but it is useful to
# choose one that will be self-evident in future uses. In this example I have named it sort_array.
## This particular reconfiguring of the shape of the world requires feeding it a piece of wisdom
# known as an argument, here named source_array. This argument will be called upon once inside
# the scope of the Magick.
def sort_array(source_array)

  # Here exist the names and forms of variables, potent and transmutable states of being that can
  # be filled with untold knowledge.

  odd_nums = []   # This variable will contain an array of integer values.
  odd_spots = []  # Likewise, this variable will contain an array, but one of position values.

  ## Here lies a complicated arrangement of Magicks:
  ## The argument, a container for a myriad of information, in this case various integers, is
  # captured by the .each Magick. This will loop through the contents of the argument, calling
  # each individual value by a name set within the mystical pipes which I name num.
  ## Next, the .each is appended with another Magick: .with_index, a horrible conjuration that
  # can define where a value exists inside of existence itself, yet contains the possibility of
  # existing within nothingness, zero. This I call spot.
  ## Now, the part that sets the hellish thing in motion, the command: do. The Magick will not
  # stop, nay will cause the very universe itself to error, lest end be called in due time.
  source_array.each.with_index do |num, spot|

    ## A lesser aspect of the Sorting Magicks, but a potent one, is asking a question.
    # In this case, is num odd?
    ## If, another intriguing if overused conditional, allows us to aim this question towards
    # our purposes. In this case, if num is odd, we direct the value of num into a variable
    # and the position of num into another variable as defined above.
    if num.odd?
      odd_nums << num
      odd_spots << spot
    end         # Remember, each command requires a seperate end, else peril.
  end

  ## .sort... brother of .sort_by, son of .reverse. Terrible and Beautiful. Quick to anger
  # and loathe to do without. .sort requires information, data, a collection of creation which it
  # rearranges in ways that are unknowable to mortals and feared by those who are
  # unending.
  ## Here, its awesome power takes the odd values and reorders them, as the moon guides the waves,
  # into that which it deems as meet and right, that which we call ascending order. Glory be to order!
  odd_nums = odd_nums.sort    # Note that the variable itself has been rewritten forever.

  ## A necessary, albeit crude, attempt at iteration. Here I call the variable i and give it a value of zero.
  i = 0

  ## In order to restore the newly sorted odd numbers into the positions from whence they
  # were rent I call on the gathered position values, cycling through each individually, called x.
  odd_spots.each do |x|

    ## the source array is summoned to the position of an odd value. This value is rewritten,
    # permanently, with i, the first (and yet zeroth) value from the ordered array.
    source_array[x] = odd_nums[i]

    ## i increases by one so that as each odd_spot is cycled, so too is the odd_num freshly iterated.
    i += 1
  end

  ## source_array, reforged, is last to be called. Its value, the fruit of such
  # unnatural machinations, will be expressed for all of humankind to witness.
  source_array
end     # A most necessary end.



puts sort_array([10, 7, 6, 5, 3])
