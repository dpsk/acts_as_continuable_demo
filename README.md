Demo, want to check if acts_as_continuable plugin actually works.
Find plugin there: https://github.com/freels/acts_as_continuable

--
Test results(Rails 2.3.2):
* Plugin force us to use memory_store as session store, which was deleted from Rails > 2.2(can be added manually https://github.com/dpsk/acts_as_continuable_demo/commit/01dd2a92c248c723ea9cd1f237798a6df1a0d82f)
* Checking for session store removed(https://github.com/dpsk/acts_as_continuable/commit/09a10a8d0f9e49e98073a66fe60feae7c30dd279)
* Contexts can be not unique(can be fixed easily https://github.com/dpsk/acts_as_continuable/blob/master/lib/acts_as_continuable/class_macros.rb#L22)
* Not working, exception raised(https://github.com/dpsk/acts_as_continuable/blob/master/lib/acts_as_continuable/class_macros.rb#L28) performed? returning value is odd, need to go deeper :)