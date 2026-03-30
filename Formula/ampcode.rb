class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774846380-g30c5db"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774846380-g30c5db/amp-darwin-arm64"
      sha256 "f85c56b56eb0bbf30f5e16db2dac69692e6b67e2f02e055c11de9333e179c849"
    else
      url "https://static.ampcode.com/cli/0.0.1774846380-g30c5db/amp-darwin-x64"
      sha256 "24e7da712f1d2791edb8e6e81662e22953818471ff924f96d229391461c467ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774846380-g30c5db/amp-linux-arm64"
      sha256 "15c5e185bacd5058a7197d34b08294aa2933ab5c9479ec7ba2b3ba947a1193bd"
    else
      url "https://static.ampcode.com/cli/0.0.1774846380-g30c5db/amp-linux-x64"
      sha256 "d4094cf32669e94b253dc85371a8f7e3a38e8748596d41ac02a1800c4781d146"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
