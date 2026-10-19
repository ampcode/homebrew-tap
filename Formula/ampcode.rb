class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792411243-gb8cffc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792411243-gb8cffc/amp-darwin-arm64"
      sha256 "cd1ce059f86f398a0608ea3222ece48427a842812ac507e0bb177a54634fff01"
    else
      url "https://static.ampcode.com/cli/0.0.1792411243-gb8cffc/amp-darwin-x64"
      sha256 "f31fd375578d6c4e82633b2335ca227a550043a6f6cbf61d16ad9c74cbfff1c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792411243-gb8cffc/amp-linux-arm64"
      sha256 "5d0f64e5ea9b928ec05bea95ffb87643f41a1d880d5113b36aeca3b703303b09"
    else
      url "https://static.ampcode.com/cli/0.0.1792411243-gb8cffc/amp-linux-x64"
      sha256 "5adff926b3b40464ea897ec75721beadf4661db0a3445f087bea1bf73db88c24"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
