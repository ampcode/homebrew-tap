class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789531236-g3486a9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789531236-g3486a9/amp-darwin-arm64"
      sha256 "07ed7754089db88efe630038f4a5f9d910c4097de2d3953db9ec972149a09171"
    else
      url "https://static.ampcode.com/cli/0.0.1789531236-g3486a9/amp-darwin-x64"
      sha256 "b2bc888edcd736876d330038d9a05068001b128c4720c17096f904dc9744ee0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789531236-g3486a9/amp-linux-arm64"
      sha256 "43729c3290174c26cdb427453d5918dbdbe9d8431f1cc584eb29ab62058c2ddb"
    else
      url "https://static.ampcode.com/cli/0.0.1789531236-g3486a9/amp-linux-x64"
      sha256 "58597f01def241618d02081828a10505292c0bcd8d28ccb904f4ce13b4496c7d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
