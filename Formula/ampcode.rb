class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792656060-g6af3d5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792656060-g6af3d5/amp-darwin-arm64"
      sha256 "96eb6f9a98303293b54d295b2b42eb3866a2aef816086d14af25e5435b036da9"
    else
      url "https://static.ampcode.com/cli/0.0.1792656060-g6af3d5/amp-darwin-x64"
      sha256 "683004145e4d81fb47cdf92ce5c1314caccb464589949b437f540d4d1378228f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792656060-g6af3d5/amp-linux-arm64"
      sha256 "0776e8cb6fbc2cf308f149cfa982c7f3517cbcf8e4cfd589038374ff30025175"
    else
      url "https://static.ampcode.com/cli/0.0.1792656060-g6af3d5/amp-linux-x64"
      sha256 "6634af3555f9e77ffd3221d88d94ce17175a1bd7866d4ec0debad495062f3cc6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
