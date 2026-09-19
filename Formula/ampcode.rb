class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789790452-gad4023"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789790452-gad4023/amp-darwin-arm64"
      sha256 "9c77524b12589affa8c399ce8c169807a9a01b02db3d221fb998e656631040c9"
    else
      url "https://static.ampcode.com/cli/0.0.1789790452-gad4023/amp-darwin-x64"
      sha256 "49ed99e079d1184c2f78cc79f195c1b06f9756563b0bd0b86bb4a324dd4b785a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789790452-gad4023/amp-linux-arm64"
      sha256 "21310df1b4403dda662e13feb3138aa3a72dcdb77a0b213554f26f0fbfa10aa8"
    else
      url "https://static.ampcode.com/cli/0.0.1789790452-gad4023/amp-linux-x64"
      sha256 "985c04867ff13606c4a7e65675ce3d5245237f346b5c40943a88845b51a48635"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
