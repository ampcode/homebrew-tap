class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793880043-gba0c35"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793880043-gba0c35/amp-darwin-arm64"
      sha256 "73931dddd5f3d3e914a71def80fd18dfbbaf2d5a9953a79c70f690640d03bb99"
    else
      url "https://static.ampcode.com/cli/0.0.1793880043-gba0c35/amp-darwin-x64"
      sha256 "f38fa90fa24a077206b73549dd2b4f6d6f721be41425237155f406e4438bc1a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793880043-gba0c35/amp-linux-arm64"
      sha256 "d52368bcf6b17cec846324ded43a0eed8e79379e28157d66b1fd1a584e8605a5"
    else
      url "https://static.ampcode.com/cli/0.0.1793880043-gba0c35/amp-linux-x64"
      sha256 "48988902987e252d67fe3c5523c954433e1624a0343f935c41316bac80426c64"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
