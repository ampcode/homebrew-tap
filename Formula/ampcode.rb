class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775952405-ga44bd8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775952405-ga44bd8/amp-darwin-arm64"
      sha256 "5d2affb3ec55001efb903da0e812cfb87ef8ff66a5ba75628ee77a6f4a9f67d9"
    else
      url "https://static.ampcode.com/cli/0.0.1775952405-ga44bd8/amp-darwin-x64"
      sha256 "c3d1b6b74af4f6b6ffc6aaa5c6ddbe3a1a0459782833ae0c080ebc770318da8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775952405-ga44bd8/amp-linux-arm64"
      sha256 "60937ea7520f79a342b1aaabb61b0f2e4ff6838425afc5545419affccde58fb5"
    else
      url "https://static.ampcode.com/cli/0.0.1775952405-ga44bd8/amp-linux-x64"
      sha256 "6ffe77adac01679ab6617cc3ec85676bdec6067f6f6522c98ad8b791fba39dea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
