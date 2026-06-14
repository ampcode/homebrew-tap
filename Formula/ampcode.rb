class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781470549-gb446da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781470549-gb446da/amp-darwin-arm64"
      sha256 "6d17bfe20525eb2c65ca73d84225e086cc207744215cdabf990e719f2b0677e1"
    else
      url "https://static.ampcode.com/cli/0.0.1781470549-gb446da/amp-darwin-x64"
      sha256 "7a4ad32d630d1eee8e353bc1c69080e582e4183c043d356c864e69919a853ca0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781470549-gb446da/amp-linux-arm64"
      sha256 "b51d058c7b6b2e18aa06276d15b81838f4048d4fe11c7ba8dd75afce5ebce1f2"
    else
      url "https://static.ampcode.com/cli/0.0.1781470549-gb446da/amp-linux-x64"
      sha256 "4ba1e2560057f4d7c2a04111f84729b377073c919c1f2788f026da737f66b4c7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
