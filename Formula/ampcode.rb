class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789514932-g161c83"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789514932-g161c83/amp-darwin-arm64"
      sha256 "aec420b4636e6ab399e1215f6cc4ef8be6f48db999b875f2802d67e4d3065782"
    else
      url "https://static.ampcode.com/cli/0.0.1789514932-g161c83/amp-darwin-x64"
      sha256 "796128f652b87df30d838ffc33b3d06f9463fda3879854780cfbf93b3f20f263"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789514932-g161c83/amp-linux-arm64"
      sha256 "bd3d97bf8a0ceaa3c7beb8056e445b84cbba2abb66732b24de16e14e8238f9c5"
    else
      url "https://static.ampcode.com/cli/0.0.1789514932-g161c83/amp-linux-x64"
      sha256 "54b4df9eb5304ff31d36ef6dae7162268e40a0f58260aff8d518ae70e5d6da8a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
