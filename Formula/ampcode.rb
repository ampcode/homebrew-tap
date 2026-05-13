class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778655711-ga6eb3e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778655711-ga6eb3e/amp-darwin-arm64"
      sha256 "661ef65aa18878dc06ad8d4bc935c0f60561a2d2f36c5d516d569c3c28b7639b"
    else
      url "https://static.ampcode.com/cli/0.0.1778655711-ga6eb3e/amp-darwin-x64"
      sha256 "2162be099a244bb39b34cace446cf913fcaf339460a553bf1e5799b9bc431523"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778655711-ga6eb3e/amp-linux-arm64"
      sha256 "13751b513c16f569e11c6612ee8cb3713aca2e568d5a963e9c6e99d4221fba04"
    else
      url "https://static.ampcode.com/cli/0.0.1778655711-ga6eb3e/amp-linux-x64"
      sha256 "b4c0c57dc2952ebf08150e4a196a2405ff75170be0899ec020988ac17e42a921"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
