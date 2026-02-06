class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770365268-g354e6f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770365268-g354e6f/amp-darwin-arm64"
      sha256 "076e073ad6f0fac48a4d14b09948a07436f7c18b6639f14f09150d05f0acc5a1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770365268-g354e6f/amp-darwin-x64"
      sha256 "24e8ef2a2d7bc97305cd8044b7480fcf53664d837b83e51afa7abddbb8214c54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770365268-g354e6f/amp-linux-arm64"
      sha256 "d18d2c62b8b09506217824d4a5301e729c80460e75102b1dabc1c8d4a51872cc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770365268-g354e6f/amp-linux-x64"
      sha256 "c8f7b05b4f646082c937582ad8941159902c8f01491ba4b151e4f4ff9e02ce2e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
