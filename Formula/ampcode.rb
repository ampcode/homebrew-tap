class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788980482-g24f5e8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788980482-g24f5e8/amp-darwin-arm64"
      sha256 "06296499505966957825cd532824fd39bc0d830e9bbf72962e77043d95f6288e"
    else
      url "https://static.ampcode.com/cli/0.0.1788980482-g24f5e8/amp-darwin-x64"
      sha256 "4c6796850d9b4d9b968d6e20e89128ac4a04f54c733bbcd7b48bd7bc919952a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788980482-g24f5e8/amp-linux-arm64"
      sha256 "e32a2d07d01f4b9860b212903b5774ea7ab75f9df54f8be9daf1b0857c282cd5"
    else
      url "https://static.ampcode.com/cli/0.0.1788980482-g24f5e8/amp-linux-x64"
      sha256 "68c1b807a97dd0335fd76e8e84d6f960841a5bf17d92d82c9611a41f105c17df"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
