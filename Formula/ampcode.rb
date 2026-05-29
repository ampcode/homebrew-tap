class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780032159-g3925ab"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780032159-g3925ab/amp-darwin-arm64"
      sha256 "dd85fbf0883b82579894e5e74df0b28e3ba1cd2213bf78d00e5b705109613a37"
    else
      url "https://static.ampcode.com/cli/0.0.1780032159-g3925ab/amp-darwin-x64"
      sha256 "3ec30af6626751b613485d304a31e5f42d57eddbd4ab9a5096b75df45033d2c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780032159-g3925ab/amp-linux-arm64"
      sha256 "94114e94d1c65957b57dfacd37c7e3302acb839bba2c3c60d55a6ba6e6c99043"
    else
      url "https://static.ampcode.com/cli/0.0.1780032159-g3925ab/amp-linux-x64"
      sha256 "00fa424ea6f80c5880f29e3c379ee1eb097ce060897f0cc13553b1a7adf4aacc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
