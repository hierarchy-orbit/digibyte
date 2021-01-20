<<<<<<< HEAD
What is DigiByte?
----------------

DigiByte (DGB) is a rapidly growing decentralized, global blockchain that was founded in early 2014 with a focus on cyber security, payments & secure communications technologies.

For more information, as well as an immediately useable, binary version of the DigiByte Core software, see https://digibyte.io

DigiByte FAQ
-------------
Launch Date: January 10th, 2014

Blockchain Type: Public, Decentralized, UTXO based, Multi-Algorithm

Ticker Symbol: DGB

Genesis Block Hash: "USA Today: 10/Jan/2014, Target: Data stolen from up to 110M customers"

Max Total Supply: 21 Billion DigiBytes in 21 Years (2035)

Current Supply: 11,692,747,373 DGB (April 2019)

Block Reward Reduction: 1% Monthly

Current Block Reward: 688 DGB (April 2019)

Mining Algorithms: Five individual: SHA256, Scrypt, Groestl, Skein & Qubit

Block Interval: 15 Second Blocks (75 seconds per algo)

Algo Block Share: 20% Block Share Per Algo (5)

Difficulty Retarget: Every 1 Block, 5 Separate Difficulties, independent difficulty for each Mining Algo

SegWit Support: Yes. First major altcoin to successfully activate Segwit. (April 2017)

Hardforks: 4. DigiShield, MultiAlgo, MultiShield, DigiSpeed

Softforks: 3. SegWit, CSV, NVersionBits

You can mine DigiByte on one of five separate mining algorithms. Each algo averages out to mine 20% of new blocks. This allows for much greater decentralization than other blockchains. An attacker with 99% of of any individual algorithm would still be unable to hardfork the blockchain, making DigiByte much more secure against PoW attacks than other blockchains.

DigiShield Hardfork: Block 67,200, Feb. 28th, 2014

MultiAlgo Hardfork: Block 145k, Sep. 1st 2014

MultiShield Hardfork: Block 400k, Dec. 10th 2014

DigiSpeed Hardfork: Block 1,430,000 Dec. 4th 2015

DigiByte vs Bitcoin
-------------------

Security: 5 DigiByte mining algorithms vs. 1 Bitcoin mining algorithm.
DigiByte mining is much more decentralized.
DigiByte mining algorithms can be changed out in the future to prevent centralization.

Speed: DigiByte transactions occur much faster than Bitcoin transactions.
1-2 second transaction notifications.
15 second DigiByte blocks vs. 10 minute Bitcoin blocks.
DigiByte has 6x block confirmations 1.5 minutes vs. 1 hour with Bitcoin.

Transaction Volume: DigiByte can handle many more transactions per second.
Bitcoin can only handle 3-4 transactions per second.
DigiByte currently can handle 560+ transactions per second.
The 2015 DigiSpeed hardfork introduced changes that double the capacity of the network every two years.

Total Supply: More DigiBytes, lower price, more micro transactions, better price stability.
21 billion DigiBytes will be created over 21 years.
Only 21 million Bitcoin will be created over 140 years.
1:1000 ratio. 1 DigiByte for every 1000 Bitcoin.

Flexibility: Ability to quickly add new features.
DigiByte can add new features & upgrades much quicker than Bitcoin.
Future DigiByte upgrades will push transaction limit to several hundred thousand per second.

Marketability & Usability: DigiByte is an easy brand to market to consumers.
DigiBytes are much cheaper to acquire.
=======
DigiByte Core integration/staging tree
=====================================

https://digibytecore.org

What is DigiByte?
----------------

DigiByte is an experimental digital currency that enables instant payments to
anyone, anywhere in the world. DigiByte uses peer-to-peer technology to operate
with no central authority: managing transactions and issuing money are carried
out collectively by the network. DigiByte Core is the name of open source
software which enables the use of this currency.

For more information, as well as an immediately usable, binary version of
the DigiByte Core software, see https://digibytecore.org/en/download/, or read the
[original whitepaper](https://digibytecore.org/digibyte.pdf).
>>>>>>> 5358de127d898d4bb197e4d8dc2db4113391bb25

License
-------

DigiByte Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

<<<<<<< HEAD
The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/digibyte/digibyte/tags) are created
regularly to indicate new official, stable release versions of DigiByte Core.
=======
The `master` branch is regularly built (see `doc/build-*.md` for instructions) and tested, but it is not guaranteed to be
completely stable. [Tags](https://github.com/digibyte/digibyte/tags) are created
regularly from release branches to indicate new official, stable release versions of DigiByte Core.

The https://github.com/digibyte-core/gui repository is used exclusively for the
development of the GUI. Its master branch is identical in all monotree
repositories. Release branches and tags do not exist, so please do not fork
that repository unless it is for development reasons.
>>>>>>> 5358de127d898d4bb197e4d8dc2db4113391bb25

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md)
and useful hints for developers can be found in [doc/developer-notes.md](doc/developer-notes.md).

Testing
-------

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/test), written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/test) are installed) with: `test/functional/test_runner.py`

The Travis CI system makes sure that every pull request is built for Windows, Linux, and macOS, and that unit/sanity tests are run automatically.

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.

<<<<<<< HEAD
=======
Translations
------------

Changes to translations as well as new translations can be submitted to
[DigiByte Core's Transifex page](https://www.transifex.com/digibyte/digibyte/).

Translations are periodically pulled from Transifex and merged into the git repository. See the
[translation process](doc/translation_process.md) for details on how this works.

**Important**: We do not accept translation changes as GitHub pull requests because the next
pull from Transifex would automatically overwrite them again.

Translators should also subscribe to the [mailing list](https://groups.google.com/forum/#!forum/digibyte-translators).
>>>>>>> 5358de127d898d4bb197e4d8dc2db4113391bb25
