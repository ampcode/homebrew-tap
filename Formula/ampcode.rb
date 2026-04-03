class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775174787-g17eb31"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775174787-g17eb31/amp-darwin-arm64"
      sha256 "cacfe35dc6da5701cbb48a09e0d78490063769e8fc2d6a2743a5736087ec9727"
    else
      url "https://static.ampcode.com/cli/0.0.1775174787-g17eb31/amp-darwin-x64"
      sha256 "dfde660431033c74c104657cb29ae6c121aad15c5555998c3667ec0ad4d88b6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775174787-g17eb31/amp-linux-arm64"
      sha256 "0496f81fb3c2267651cad0fb609738e2e2b1b782baf58292e84be480b5070c91"
    else
      url "https://static.ampcode.com/cli/0.0.1775174787-g17eb31/amp-linux-x64"
      sha256 "70f170839235e0353c11ffcdb992c227858fb6653ce1ad406dde918a6a5e2f67"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
