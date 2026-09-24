class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790251618-ge05846"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790251618-ge05846/amp-darwin-arm64"
      sha256 "b609761269412665cb945e2891991e4a25307133e0ad95cc7edbdde1be804e82"
    else
      url "https://static.ampcode.com/cli/0.0.1790251618-ge05846/amp-darwin-x64"
      sha256 "248a1206dcecf99ffd0582f992cc3989a4c7607e89cff4220267999777e24614"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790251618-ge05846/amp-linux-arm64"
      sha256 "53936f210f512ad4d93e2f8c0be80a8947926cc4c6e1fd06e831a7d2ad0ec61f"
    else
      url "https://static.ampcode.com/cli/0.0.1790251618-ge05846/amp-linux-x64"
      sha256 "8b4c0b6c5a145dc518250e33f581728f4a81dde57f266c8fde5ee0e765fae1c0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
