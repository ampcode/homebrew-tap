class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789634559-g4d6081"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789634559-g4d6081/amp-darwin-arm64"
      sha256 "ae6675eca34e195718acacda8ecd4a0673bbe399e422b4a6fff98ef3675d0b71"
    else
      url "https://static.ampcode.com/cli/0.0.1789634559-g4d6081/amp-darwin-x64"
      sha256 "b2e449c84a1282f9827229d841bd8c0cdf5111e07ffd7db3359b1225e80b7b75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789634559-g4d6081/amp-linux-arm64"
      sha256 "b793f204d4ae9c4db963daaffc44d4dc98b34d3593adf62c2bcb1ddabf35213d"
    else
      url "https://static.ampcode.com/cli/0.0.1789634559-g4d6081/amp-linux-x64"
      sha256 "7714973a024f0936ae831278197ba15ff077b3ffee8b442f1642914c15d07773"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
