class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780425374-g3328d2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780425374-g3328d2/amp-darwin-arm64"
      sha256 "8e12c4c25782abe1fa9fbe5cdaa45a7ccd489be4ac0ab5ea99e908dc3f13e9a9"
    else
      url "https://static.ampcode.com/cli/0.0.1780425374-g3328d2/amp-darwin-x64"
      sha256 "25f8f28805213ba32739890188dc014e0a207574b221bb58fea06d4af9ee27f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780425374-g3328d2/amp-linux-arm64"
      sha256 "2ebb5ef249a5f2a796e64f7fe5ab5abbb87fa671804bd5f42a376ef3d515150b"
    else
      url "https://static.ampcode.com/cli/0.0.1780425374-g3328d2/amp-linux-x64"
      sha256 "54060bbae238817472bf423ce1d6d26e92f1f4167318313f0e0a822ca813756e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
