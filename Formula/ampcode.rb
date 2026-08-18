class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787011334-gcb0a91"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787011334-gcb0a91/amp-darwin-arm64"
      sha256 "42c3a1ac402ecc6054fecc9ce602027efd85dea320779fafd2e78582e1f33f4c"
    else
      url "https://static.ampcode.com/cli/0.0.1787011334-gcb0a91/amp-darwin-x64"
      sha256 "dd1977448dbc7ab84c36fbfcd4e92f4d1d1918384b1c5d7a24a3892e4d48fa3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787011334-gcb0a91/amp-linux-arm64"
      sha256 "c65f8481047036950e33882c386ba0ac64668cf7c7ede59175560d611da16700"
    else
      url "https://static.ampcode.com/cli/0.0.1787011334-gcb0a91/amp-linux-x64"
      sha256 "42015b205b70a05ba82815963d57dc47181ace09ee471a74500ba92a4d4e9763"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
