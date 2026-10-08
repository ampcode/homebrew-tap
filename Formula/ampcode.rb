class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791432144-g37a6c8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791432144-g37a6c8/amp-darwin-arm64"
      sha256 "d196c399c42e3ec249e4826f887e533e87b405606e845368d6d1becf19d5c913"
    else
      url "https://static.ampcode.com/cli/0.0.1791432144-g37a6c8/amp-darwin-x64"
      sha256 "0a91916360990e2e48227dd2380b826650682ef275fe834c3decea061f2ad2ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791432144-g37a6c8/amp-linux-arm64"
      sha256 "e90249bddc03b5e6399d6685a7d54b7b050b7d988950a90068df42cf64a1ad03"
    else
      url "https://static.ampcode.com/cli/0.0.1791432144-g37a6c8/amp-linux-x64"
      sha256 "7033c5908d8a67189b6b92b50da4fbb3ef6da329ffff41447d75c561ef77a72e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
