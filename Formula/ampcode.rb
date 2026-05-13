class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778659940-g52b40a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778659940-g52b40a/amp-darwin-arm64"
      sha256 "f3db51bf774a637bfce73b79cd930c224267c7fbb1eaa60fd5ffc378dfb24008"
    else
      url "https://static.ampcode.com/cli/0.0.1778659940-g52b40a/amp-darwin-x64"
      sha256 "c4e2d08c5a352a9f2f0daf767fff8c602d07fe60d7b05084b22ac23222732df6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778659940-g52b40a/amp-linux-arm64"
      sha256 "d7e506d895178ab347fa487f158d0a29451493a7c710bb68c5b2f905a775453e"
    else
      url "https://static.ampcode.com/cli/0.0.1778659940-g52b40a/amp-linux-x64"
      sha256 "81ea96d65330beb99c221d047c13f453ced59f927d7044381619ed73e1e7ccb8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
