class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791979242-g144271"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791979242-g144271/amp-darwin-arm64"
      sha256 "c5ad8701f98818de7dd18eec0ac2f7691069ebc168a9888c531703a572a959b3"
    else
      url "https://static.ampcode.com/cli/0.0.1791979242-g144271/amp-darwin-x64"
      sha256 "2e466bb09a26aa6bb1cb0ee8a20dd93ced71afcdea28082e45166b0dfe3b801a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791979242-g144271/amp-linux-arm64"
      sha256 "5f3af60fe8921cbe67f2a8985d350d7755254157eb2c540f479bbce247116594"
    else
      url "https://static.ampcode.com/cli/0.0.1791979242-g144271/amp-linux-x64"
      sha256 "9583184a667c08aae20776787bd29169f6aefdbd3488e1454af636d68e563ea9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
