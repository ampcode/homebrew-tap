class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775969639-g317d38"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775969639-g317d38/amp-darwin-arm64"
      sha256 "f9a2a72b0e886daaba10a9a15e3e539b2c131ccc1f295243f1ed87e68bc8f24b"
    else
      url "https://static.ampcode.com/cli/0.0.1775969639-g317d38/amp-darwin-x64"
      sha256 "93fd625388a4f752f381f24e071678d895e9f30112f956cd0b31a1cb92d9866c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775969639-g317d38/amp-linux-arm64"
      sha256 "1e704aebd5bcf4bc6bde3a445183c8d89b74cecaac97dbff2e88161a593cc330"
    else
      url "https://static.ampcode.com/cli/0.0.1775969639-g317d38/amp-linux-x64"
      sha256 "08251a5f407e2e709d30c04089c1ba5ecc1dd8868ba5803e9b1b6c8d2155a6db"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
