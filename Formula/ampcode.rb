class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779309523-g417e08"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779309523-g417e08/amp-darwin-arm64"
      sha256 "a6b1a6196eb836827c808d6f5d7bf92f79b667197d8290ae82e58b5078ec8610"
    else
      url "https://static.ampcode.com/cli/0.0.1779309523-g417e08/amp-darwin-x64"
      sha256 "c2bdf64e4b9510a62771900c61e38677108d6138c66d1ed066f2a6ff89c6709d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779309523-g417e08/amp-linux-arm64"
      sha256 "2760874b91f4d34d28b6d51c82f3cd80f29e0475709ec9c6ed47dd74cf770c18"
    else
      url "https://static.ampcode.com/cli/0.0.1779309523-g417e08/amp-linux-x64"
      sha256 "fb4e5020dea39669d39030ce88d58e8e60d87a96dcb7216a9bbe18fd3940b55b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
