class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783755454-g195a10"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783755454-g195a10/amp-darwin-arm64"
      sha256 "4d4fce9267082e20c14e13cdaa827f24f4949dd7d4371f21a3ee9c956970832e"
    else
      url "https://static.ampcode.com/cli/0.0.1783755454-g195a10/amp-darwin-x64"
      sha256 "37725d7bfbde9a0f07d4226785cd574268016cf424965d5796c8dbda8d27db51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783755454-g195a10/amp-linux-arm64"
      sha256 "0e773d9c61db97a5c05540fb0185ee103b60d3202de7f5a0770e21628fe47e31"
    else
      url "https://static.ampcode.com/cli/0.0.1783755454-g195a10/amp-linux-x64"
      sha256 "89213afc32eeeecf404ec9f79648dff404ed1d68987b255df6b3815018d522fc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
