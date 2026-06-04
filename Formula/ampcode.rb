class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780601115-gdd09a6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780601115-gdd09a6/amp-darwin-arm64"
      sha256 "1d79a3bbf9da7863cc40ad2d6d2354a230385f443177cbf421940cb932635f97"
    else
      url "https://static.ampcode.com/cli/0.0.1780601115-gdd09a6/amp-darwin-x64"
      sha256 "ee224966ad4b0096015a63939331a2c80b9bf37144a95e59a163a41c6dc632d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780601115-gdd09a6/amp-linux-arm64"
      sha256 "f2996efb4611b9ad61a6d95b4ff6d7277986a7d8f28a75907e2b67c8880a4c8b"
    else
      url "https://static.ampcode.com/cli/0.0.1780601115-gdd09a6/amp-linux-x64"
      sha256 "6a0a5eec3cb67a1b7a84c93a9f69b246edab96a84afb289e7cbc549218c58784"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
