class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788134497-gb6ce09"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788134497-gb6ce09/amp-darwin-arm64"
      sha256 "5e069d4b457ae270c848b49575d64b8e35598179ad31d48c7aca9a4c56659084"
    else
      url "https://static.ampcode.com/cli/0.0.1788134497-gb6ce09/amp-darwin-x64"
      sha256 "0dbd4768a5798ffa57eb2b25f2133603cb139102b892a49463472ba33a56eb57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788134497-gb6ce09/amp-linux-arm64"
      sha256 "b40a69d81793cd61f7a749129cbd39d152a1a5adba46b9f7bf30f37d166fa957"
    else
      url "https://static.ampcode.com/cli/0.0.1788134497-gb6ce09/amp-linux-x64"
      sha256 "08fceb9ca40fd470b3a5743c9e3e3aad7655795ba3cc4cea12ff2cbd36563dbb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
