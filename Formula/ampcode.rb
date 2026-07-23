class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784796539-g051498"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784796539-g051498/amp-darwin-arm64"
      sha256 "b29bde03abda891b268b60edf58d807d6a5fe9551c61158da07f6c4e521e9ac5"
    else
      url "https://static.ampcode.com/cli/0.0.1784796539-g051498/amp-darwin-x64"
      sha256 "04780dff0f510f47d8cf9372cdc4d088060c4956156eb324362599129a4794f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784796539-g051498/amp-linux-arm64"
      sha256 "28344b4cf3c20cdf05f9a6e378239cca7d87cad5bf6ffd2da6adad7319d124cb"
    else
      url "https://static.ampcode.com/cli/0.0.1784796539-g051498/amp-linux-x64"
      sha256 "614b11fb585159fa78a37b538740d6ed01979dc676c26b12953546818172374f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
