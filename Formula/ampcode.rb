class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784782915-g1b24ab"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784782915-g1b24ab/amp-darwin-arm64"
      sha256 "6b0a40a99a21bce9dc2ccc9c77ebe4f341edf6a266df8e6caa7283d8e9ae3c0c"
    else
      url "https://static.ampcode.com/cli/0.0.1784782915-g1b24ab/amp-darwin-x64"
      sha256 "f6d37258ce47882fddb2074beee7debbfcc5bdd9ac5fcae3016adc60c519b839"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784782915-g1b24ab/amp-linux-arm64"
      sha256 "54d55e9e598a10e7a5e6e6921cc7e605f146ff3ddf7f774d7263849a512d8f68"
    else
      url "https://static.ampcode.com/cli/0.0.1784782915-g1b24ab/amp-linux-x64"
      sha256 "0053bf95ca2865adb557ddd04b82026b653fb3ac0a9254f8d4c7c969f76a8a39"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
