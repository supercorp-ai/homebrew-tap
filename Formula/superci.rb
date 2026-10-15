# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.5.tgz"
      sha256 "944661440a9afd4cbfb8a6d030de3533964c91f6dc2cc2a97c3e2d7f9baeee19"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.5.tgz"
      sha256 "e327fd6f5a42003e042444a4183ef2a12c26539c760645d459ddf6434330afdd"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.5.tgz"
      sha256 "48911e055f45846c1f71e7301279a8a2c5cdb648803234b2ba9e9c7da474c650"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.5.tgz"
      sha256 "9c94e47c89fd898d95f03dbdb3ac462c436052089660f1b498e6a98d8fd9d512"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
