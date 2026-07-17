class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784277624-gbf685c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784277624-gbf685c/amp-darwin-arm64"
      sha256 "0a476178eda9409c636be88e6ca600d3c628b45a1d6f0cd6ff023bc0d733839c"
    else
      url "https://static.ampcode.com/cli/0.0.1784277624-gbf685c/amp-darwin-x64"
      sha256 "5601b5ca0fb6fb61278183253210b3e4145e337b4e6c5460d60b09a85f7bcbb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784277624-gbf685c/amp-linux-arm64"
      sha256 "12055af5ad28ddc09fca023cd5e812cd356d1bb365da127677be4f05e416d4d4"
    else
      url "https://static.ampcode.com/cli/0.0.1784277624-gbf685c/amp-linux-x64"
      sha256 "5a11ff661591d4266a9c43b7edef9fb658be6d28621c095cd88d64573fa367a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
