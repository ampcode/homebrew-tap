class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775491927-gdbd314"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775491927-gdbd314/amp-darwin-arm64"
      sha256 "1e7a8927f305ca2fa150c95204ee475fc2f2544d02125a3a5967c9615dd81ae7"
    else
      url "https://static.ampcode.com/cli/0.0.1775491927-gdbd314/amp-darwin-x64"
      sha256 "37eccfe4bec454019b5b9e4eaa0c068e6daccea1f90f36cccef34261e674e950"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775491927-gdbd314/amp-linux-arm64"
      sha256 "1c1b67764e8cea516b05285435229118250f760111685627cd08abe9f75812d1"
    else
      url "https://static.ampcode.com/cli/0.0.1775491927-gdbd314/amp-linux-x64"
      sha256 "e6b080cbc522df3cf611a4342623a85b2f500828be65b55029a6f32aefadc177"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
