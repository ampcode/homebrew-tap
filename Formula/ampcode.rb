class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784957949-g91f8a1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784957949-g91f8a1/amp-darwin-arm64"
      sha256 "8cc6e7d02e85cf5a074267475854ffb801bee42a25dd5afd947f7416d73ea9c9"
    else
      url "https://static.ampcode.com/cli/0.0.1784957949-g91f8a1/amp-darwin-x64"
      sha256 "f7836089f9931d78911078059bc0cc6092587038703bd5dc06252bad9217b0b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784957949-g91f8a1/amp-linux-arm64"
      sha256 "2c848bd9987851b95539dd2ace9573f8aba72583850130ca6b29647ee13724cf"
    else
      url "https://static.ampcode.com/cli/0.0.1784957949-g91f8a1/amp-linux-x64"
      sha256 "e3444e1735554686be102595a9d9af7671a6b230899f85c04324a4f4b186695b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
