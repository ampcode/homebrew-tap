class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788681645-g07d369"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788681645-g07d369/amp-darwin-arm64"
      sha256 "ff5cd21d8159b4998d8104381433ed738f4e7eeb6a422b5e6cc8a1b615af464f"
    else
      url "https://static.ampcode.com/cli/0.0.1788681645-g07d369/amp-darwin-x64"
      sha256 "290dbf2f3acf3174cca009b9df9b23e046439540e2b101a10cf11eff2f00b3a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788681645-g07d369/amp-linux-arm64"
      sha256 "f2158967738aeedd110817a61558b17a200e6c9d4312623da5f4ae62a3c79660"
    else
      url "https://static.ampcode.com/cli/0.0.1788681645-g07d369/amp-linux-x64"
      sha256 "28b950d0bd6703e9cdb0c43fcba5a1cf8b83bed76b9da2b2c7a2a5d4d0bf6a04"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
