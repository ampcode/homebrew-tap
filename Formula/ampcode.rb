class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780130685-gfdac38"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780130685-gfdac38/amp-darwin-arm64"
      sha256 "1cdfbfdbf15c7ad542b663a6ce57321eae52b9a1a8de73861da537ea927d5527"
    else
      url "https://static.ampcode.com/cli/0.0.1780130685-gfdac38/amp-darwin-x64"
      sha256 "97727ff3142065ebfe57febcad1044fe1b72e24d201493c092bed98ee8dcb70b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780130685-gfdac38/amp-linux-arm64"
      sha256 "6ce0fe73cab281df0d5330e8f705b3a5a233eb9c47e360488d49989275195ed0"
    else
      url "https://static.ampcode.com/cli/0.0.1780130685-gfdac38/amp-linux-x64"
      sha256 "22f4323190a071eaad53dabbbfeee5641fc27195ecf117cdd6a9e6ce95e5e947"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
