class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783946745-g8c4c0a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783946745-g8c4c0a/amp-darwin-arm64"
      sha256 "835d7a89a44750cdc61e40125d01ad3978ff3f098f872b52cfc9bafa05f48ca2"
    else
      url "https://static.ampcode.com/cli/0.0.1783946745-g8c4c0a/amp-darwin-x64"
      sha256 "a2da1fd013c07e802b7ca574a9310e270112ee25db519925a48dcafc88e94fca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783946745-g8c4c0a/amp-linux-arm64"
      sha256 "728701074d55bc6ef575551b284c575972752b9594a58e7d23a0cb16a21d2dac"
    else
      url "https://static.ampcode.com/cli/0.0.1783946745-g8c4c0a/amp-linux-x64"
      sha256 "d34e9df1a79e44c23613780ebd74d5a26cf4800254395a5b4918e952dd583de4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
