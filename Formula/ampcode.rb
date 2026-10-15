class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792022479-ge66e24"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792022479-ge66e24/amp-darwin-arm64"
      sha256 "a6881c3a8b4d8a01e8829212310e6eb192037db33b46f5767b6e6929729f53c8"
    else
      url "https://static.ampcode.com/cli/0.0.1792022479-ge66e24/amp-darwin-x64"
      sha256 "071c0b0d9ada88ff5ca2fdade30178cd94f5d9ff67b1a14f2e0cebb6bebf3f84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792022479-ge66e24/amp-linux-arm64"
      sha256 "951329ef01f94abb9a0455f8fe022e162dc65f3dece446f527c0cd0cbab118b8"
    else
      url "https://static.ampcode.com/cli/0.0.1792022479-ge66e24/amp-linux-x64"
      sha256 "faad8d20d456890f80c4cf25a81adb1b4d4df023ea45e82d67c57401541efabd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
