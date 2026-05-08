class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778282629-gfb1910"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778282629-gfb1910/amp-darwin-arm64"
      sha256 "e39782156bdb01fbdca8cf017dd3e91351fe33b242e9ac74f278d38c6e29debd"
    else
      url "https://static.ampcode.com/cli/0.0.1778282629-gfb1910/amp-darwin-x64"
      sha256 "b8953ee8c9851acb9845393488fe60976b9d14f8110b19714d09db18f092adb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778282629-gfb1910/amp-linux-arm64"
      sha256 "716053169dfb1773fc26128f4e9f675eb455da277fe16b5a058c2811cca343c0"
    else
      url "https://static.ampcode.com/cli/0.0.1778282629-gfb1910/amp-linux-x64"
      sha256 "326b4f94968798e27218de3f70f674b143537f6dbcc343167e9dda7c1eeabb86"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
