class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785673126-g18eec2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785673126-g18eec2/amp-darwin-arm64"
      sha256 "bcbf87ae58b48a4c9e0e54c2456f646fe6b8b6377da448664c1bd494931c2254"
    else
      url "https://static.ampcode.com/cli/0.0.1785673126-g18eec2/amp-darwin-x64"
      sha256 "7d9b45d003ceeb6f4b79fcfe20be66cba46a7a1fb874565767724ef929d54d03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785673126-g18eec2/amp-linux-arm64"
      sha256 "a3885d9dec0dabda58e708efdcbca0517890dd0506d2c32ae1c5f0aee6adcc9f"
    else
      url "https://static.ampcode.com/cli/0.0.1785673126-g18eec2/amp-linux-x64"
      sha256 "971a0c7ec53d077c1ce668ccd975d5377c75f4b8bc3f26bcfcf06f70b97cb0c0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
