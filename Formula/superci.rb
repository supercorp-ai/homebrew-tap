# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.6.tgz"
      sha256 "9e94585dcff7aed951857abdcc7f925fd589f568ee517bdab4fc0cccc7e5b8db"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.6.tgz"
      sha256 "5eb07b1eab28738ac192316a01b8fe81641ec2498ece3ad9844e4c988b9396f5"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.6.tgz"
      sha256 "da3716d56d89289114bbb51cb58208ab99f9ef90e0a9bee6cb486589a12373e5"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.6.tgz"
      sha256 "403c578ce271a7eba6ba12fc60b94cedf26feecf4debe38e19eb5068dea7c4e8"
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
